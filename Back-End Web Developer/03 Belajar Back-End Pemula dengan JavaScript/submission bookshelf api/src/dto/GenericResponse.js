/* src/dto/GenericResponse.js
Created By Qorri Dwi Istajib
website https://www.qorri-di.com
*/
class GenericResponse {
    static error(message) {
        return {
            status: "fail",
            message: message
        };
    }

    static success(message, data) {
        const response = {
            status: "success"
        };
        if (message){
            response.message = message;
        }
        if (data) {
            response.data = data;
        }
        return response;
    }
}

export default GenericResponse;